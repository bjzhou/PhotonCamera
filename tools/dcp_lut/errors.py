"""Localizable user-facing failures; preserve SDK/system details as parameters."""


class ToolError(ValueError):
    def __init__(self, key, **parameters):
        self.key, self.parameters = key, parameters
        super().__init__(key)

    def translated(self, messages):
        return messages[self.key].format(**self.parameters)
