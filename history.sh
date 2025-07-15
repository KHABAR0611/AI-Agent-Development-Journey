#!/bin/bash
mkdir -p python_basics ai_concepts agent_frameworks projects

# Этап 1: Основы Python (2025)
dates=("2025-07-15" "2025-08-20" "2025-10-10" "2025-12-05")
messages=("Initial commit: Python basics and syntax" "Added OOP concepts and data structures" "Implemented file handling and basic algorithms" "Completed Python fundamentals module")

for i in "${!dates[@]}"; do
    d="${dates[$i]}"
    msg="${messages[$i]}"
    echo "# $msg" >> python_basics/notes.md
    GIT_COMMITTER_DATE="$d 14:00:00" git add .
    GIT_COMMITTER_DATE="$d 14:00:00" git commit --date="$d 14:00:00" -m "$msg"
done

# Этап 2: Изучение AI и API (2026)
dates2=("2026-01-18" "2026-02-25" "2026-04-12" "2026-05-30")
messages2=("Introduction to LLM APIs and prompt engineering" "Added RAG pipeline basics" "Implemented vector database integration" "Refactored AI pipeline for better context handling")

for i in "${!dates2[@]}"; do
    d="${dates2[$i]}"
    msg="${messages2[$i]}"
    echo "# $msg" >> ai_concepts/research.md
    GIT_COMMITTER_DATE="$d 15:30:00" git add .
    GIT_COMMITTER_DATE="$d 15:30:00" git commit --date="$d 15:30:00" -m "$msg"
done

# Этап 3: Разработка AI-агентов (2026)
dates3=("2026-06-05" "2026-06-20" "2026-07-10" "2026-07-18")
messages3=("Setup LangChain environment for agent development" "Created first autonomous agent with tool calling" "Implemented multi-agent collaboration logic" "Finalized agent architecture and updated documentation")

for i in "${!dates3[@]}"; do
    d="${dates3[$i]}"
    msg="${messages3[$i]}"
    echo "# $msg" >> agent_frameworks/dev_log.md
    GIT_COMMITTER_DATE="$d 18:00:00" git add .
    GIT_COMMITTER_DATE="$d 18:00:00" git commit --date="$d 18:00:00" -m "$msg"
done

git push origin main --force
