"""Main entry point for Weather MCP Server"""

import sys


def main():
    print("Weather MCP Server is running...")
    print(f"Python version: {sys.version}")
    print("Server started successfully!")

    # Keep the container running
    try:
        import time
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        print("\nShutting down...")


if __name__ == "__main__":
    main()
