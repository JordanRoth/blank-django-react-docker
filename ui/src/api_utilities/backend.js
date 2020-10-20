const backendBaseURL =
  process.env.NODE_ENV === "production"
    ? "<PRODUCTION_URL>"
    : "http://0.0.0.0:8000";
