.class public final Leqe;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public final b:Lcom/google/googlex/gcam/ShotMetadata;

.field public final c:Lgpa;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/InterleavedImageU8;ILcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqe;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    iput p2, p0, Leqe;->d:I

    iput-object p3, p0, Leqe;->b:Lcom/google/googlex/gcam/ShotMetadata;

    sget-object p1, Lmpx;->a:Lmpx;

    invoke-virtual {p3}, Lcom/google/googlex/gcam/ShotMetadata;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Leqe;->a(Ljava/lang/String;)Lmqp;

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/googlex/gcam/ShotMetadata;->j()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Leqe;->a(Ljava/lang/String;)Lmqp;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lgoz;->a(Lmqp;Lmqp;Lmqp;)Lgpa;

    move-result-object p1

    iput-object p1, p0, Leqe;->c:Lgpa;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lmqp;
    .locals 1

    invoke-static {p0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    invoke-static {p0}, Lkrm;->c(Ljava/lang/String;)Lmqp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Leqe;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    return-void
.end method
