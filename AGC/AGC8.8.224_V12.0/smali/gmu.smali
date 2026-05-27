.class public final Lgmu;
.super Ljava/lang/Object;

# interfaces
.implements Lecu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lewa;Lgkr;I[B[B)V
    .locals 0

    iput p3, p0, Lgmu;->c:I

    iput-object p1, p0, Lgmu;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgmu;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgmx;Lgkr;I[B[B)V
    .locals 0

    iput p3, p0, Lgmu;->c:I

    iput-object p1, p0, Lgmu;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgmu;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lgmu;->b:Ljava/lang/Object;

    check-cast v0, Lgmx;

    iget-object v0, v0, Lgmx;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledk;

    iget-object v1, p0, Lgmu;->a:Ljava/lang/Object;

    sget-object v2, Lefz;->b:Lefz;

    check-cast v1, Lgkr;

    invoke-interface {v0, v1, v2}, Ledk;->d(Lgkr;Lefz;)Ledm;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ledm;->d(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V

    invoke-interface {v0}, Ledm;->close()V

    return-void
.end method

.method private final d(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lgmu;->a:Ljava/lang/Object;

    check-cast v0, Lewa;

    iget-object v0, v0, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledk;

    iget-object v1, p0, Lgmu;->b:Ljava/lang/Object;

    sget-object v2, Lefz;->b:Lefz;

    check-cast v1, Lgkr;

    invoke-interface {v0, v1, v2}, Ledk;->d(Lgkr;Lefz;)Ledm;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ledm;->b(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V

    invoke-interface {v0}, Ledm;->close()V

    return-void
.end method


# virtual methods
.method public final a(Leea;Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;)V
    .locals 2

    iget v0, p0, Lgmu;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgmu;->a:Ljava/lang/Object;

    check-cast v0, Lewa;

    iget-object v0, v0, Lewa;->g:Ljava/lang/Object;

    const-string v1, "Got RAW image from primary shot."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, p1, Leea;->d:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4, p1}, Lgmu;->d(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Leea;->a()I

    iget-object p1, p1, Leea;->d:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4, p1}, Lgmu;->c(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lecq;)V
    .locals 5

    iget v0, p0, Lgmu;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgmu;->a:Ljava/lang/Object;

    check-cast v0, Lewa;

    iget-object v0, v0, Lewa;->g:Ljava/lang/Object;

    const-string v2, "Error getting RAW image from primary shot."

    invoke-interface {v0, v2, p1}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p1, Lmvv;->d:I

    sget-object p1, Lmyu;->a:Lmvv;

    invoke-direct {p0, v1, v1, v1, p1}, Lgmu;->d(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V

    return-void

    :pswitch_0
    sget-object v0, Lgmx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    invoke-virtual {p1}, Lecq;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error getting RAW image from secondary shot: %s"

    const/16 v4, 0xbe7

    invoke-static {v0, v3, v2, v4, p1}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    sget p1, Lmvv;->d:I

    sget-object p1, Lmyu;->a:Lmvv;

    invoke-direct {p0, v1, v1, v1, p1}, Lgmu;->c(Lnrc;Lcom/google/googlex/gcam/ShotMetadata;Lnqv;Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
