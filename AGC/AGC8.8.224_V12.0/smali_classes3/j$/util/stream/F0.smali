.class final Lj$/util/stream/F0;
.super Lj$/util/stream/E0;


# instance fields
.field final synthetic h:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Lj$/util/stream/v1;Lj$/desugar/sun/nio/fs/n;)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/F0;->h:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0, p1}, Lj$/util/stream/E0;-><init>(Lj$/util/stream/v1;)V

    return-void
.end method


# virtual methods
.method public final p()Lj$/util/stream/M0;
    .locals 2

    new-instance v0, Lj$/util/stream/L0;

    iget-object v1, p0, Lj$/util/stream/F0;->h:Ljava/util/function/LongBinaryOperator;

    invoke-direct {v0, v1}, Lj$/util/stream/L0;-><init>(Ljava/util/function/LongBinaryOperator;)V

    return-object v0
.end method
