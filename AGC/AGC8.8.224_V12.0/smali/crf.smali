.class public final Lcrf;
.super Ljava/io/PipedOutputStream;


# instance fields
.field public final a:Lcre;


# direct methods
.method public constructor <init>(Lcre;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object p1, p0, Lcrf;->a:Lcre;

    return-void
.end method
