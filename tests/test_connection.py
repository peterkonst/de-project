from src.connection import get_connection
from unittest import TestCase
from pg8000.native import Connection
from pg8000.exceptions import InterfaceError
import pytest


class TestConnection(TestCase):
    def test_connection_to_database_is_successful_with_correct_configuration(self): # noqa
        con = get_connection()
        self.assertIsNotNone(con)
        con.close()

    def test_connection_raises_interface_error_when_incorrect_configuration_used(self): # noqa
        with pytest.raises(InterfaceError):
            Connection(user="jason",
                       password="password123",
                       host="nc-database",
                       port=1234,
                       database="db")
