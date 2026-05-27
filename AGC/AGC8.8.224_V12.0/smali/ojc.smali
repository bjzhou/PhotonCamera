.class public final Lojc;
.super Ljava/lang/Error;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lojc;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    const-string p1, "An operation is not implemented: Not yet implemented."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method
