.class final Lmqv;
.super Ljava/util/Random;


# static fields
.field private static final serialVersionUID:J = 0xc765766f5fa5db6L


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmqv;->a:Z

    return-void
.end method


# virtual methods
.method public final setSeed(J)V
    .locals 1

    iget-boolean v0, p0, Lmqv;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Setting the seed on the shared Random object is not permitted"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
