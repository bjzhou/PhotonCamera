.class public final Leaw;
.super Ljava/lang/Object;

# interfaces
.implements Lecv;


# instance fields
.field final synthetic a:Lefz;

.field final synthetic b:Ledn;

.field final synthetic c:Lebb;

.field final synthetic d:Lewa;

.field final synthetic e:Lgkr;


# direct methods
.method public constructor <init>(Lewa;Lefz;Lgkr;Ledn;Lebb;[B[B)V
    .locals 0

    iput-object p1, p0, Leaw;->d:Lewa;

    iput-object p2, p0, Leaw;->a:Lefz;

    iput-object p3, p0, Leaw;->e:Lgkr;

    iput-object p4, p0, Leaw;->b:Ledn;

    iput-object p5, p0, Leaw;->c:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leea;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 8

    iget-object p1, p0, Leaw;->d:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    const-string v0, "RgbCallback"

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p0, Leaw;->d:Lewa;

    iget-object p1, p1, Lewa;->m:Ljava/lang/Object;

    check-cast p1, Lcvr;

    invoke-virtual {p1}, Lcvr;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leaw;->a:Lefz;

    sget-object v0, Lefz;->c:Lefz;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Leaw;->d:Lewa;

    iget-object p1, p1, Lewa;->g:Ljava/lang/Object;

    const-string v0, "Sending primary RGB for fusion processing."

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, p0, Leaw;->d:Lewa;

    iget-object p1, p1, Lewa;->m:Ljava/lang/Object;

    check-cast p1, Lcvr;

    invoke-virtual {p1}, Lcvr;->G()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ledk;

    iget-object v0, p0, Leaw;->e:Lgkr;

    sget-object v1, Lefz;->c:Lefz;

    invoke-interface {p1, v0, v1}, Ledk;->d(Lgkr;Lefz;)Ledm;

    move-result-object p1

    new-instance v4, Lcom/google/googlex/gcam/PortraitRequest;

    invoke-direct {v4}, Lcom/google/googlex/gcam/PortraitRequest;-><init>()V

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v6

    new-instance v7, Ljuf;

    invoke-direct {v7}, Ljuf;-><init>()V

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v7}, Ledm;->c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;Lnou;Ljuf;)V

    invoke-interface {p1}, Ledm;->close()V

    return-void

    :cond_0
    iget-object p1, p0, Leaw;->b:Ledn;

    iput-object p2, p1, Ledn;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1, p3}, Ledn;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-virtual {p1}, Ledn;->a()Ledo;

    move-result-object p1

    iget-object p2, p0, Leaw;->d:Lewa;

    iget-object p3, p0, Leaw;->c:Lebb;

    invoke-virtual {p2, p3, p1}, Lewa;->c(Lebb;Ledo;)V

    iget-object p1, p0, Leaw;->d:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
