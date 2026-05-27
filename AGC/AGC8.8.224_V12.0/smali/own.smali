.class public Lown;
.super Lowr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lowr;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic cP()Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "head cannot be removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cQ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
