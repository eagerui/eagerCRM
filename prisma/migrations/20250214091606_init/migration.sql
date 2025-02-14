-- CreateEnum
CREATE TYPE "Role" AS ENUM ('ADMIN', 'DEMO', 'INACTIVE', 'USER');

-- CreateEnum
CREATE TYPE "Provider" AS ENUM ('ANONYMOUS', 'GOOGLE', 'INTERNET_IDENTITY');

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "provider" "Provider" NOT NULL DEFAULT 'ANONYMOUS',
    "role" "Role" NOT NULL DEFAULT 'USER',
    "thirdPartyId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "accessToken" TEXT,
    "authChallenge" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);
