.class public final Ldod;
.super Ldog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldog;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ldog;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;[B)V
    .locals 0

    const-string p2, "Error processing HDR+ payload."

    invoke-direct {p0, p2, p1}, Ldog;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
