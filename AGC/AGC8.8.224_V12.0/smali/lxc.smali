.class final Llxc;
.super Laqa;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 0

    invoke-direct {p0, p1}, Laqa;-><init>(Lapt;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "\n      DELETE FROM F250LogEntity \n        WHERE\n          id IN (SELECT id FROM F250LogEntity ORDER BY id DESC LIMIT -1 OFFSET 200)\n          OR logEpochTimestamp < ?\n    "

    return-object v0
.end method
