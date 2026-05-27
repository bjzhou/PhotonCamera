.class public final Leav;
.super Ljava/lang/Object;

# interfaces
.implements Lecx;


# instance fields
.field final synthetic a:Ledn;

.field final synthetic b:Lebb;

.field final synthetic c:Lewa;


# direct methods
.method public constructor <init>(Lewa;Ledn;Lebb;[B)V
    .locals 0

    iput-object p1, p0, Leav;->c:Lewa;

    iput-object p2, p0, Leav;->a:Ledn;

    iput-object p3, p0, Leav;->b:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leea;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 3

    iget-object v0, p0, Leav;->c:Lewa;

    iget-object v0, v0, Lewa;->h:Ljava/lang/Object;

    const-string v1, "YuvCallback"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leav;->a:Ledn;

    iget-byte v1, v0, Ledn;->i:B

    if-eqz v1, :cond_0

    iget-wide v0, v0, Ledn;->d:J

    new-instance v2, Leej;

    invoke-direct {v2, p2, v0, v1}, Leej;-><init>(Lcom/google/googlex/gcam/YuvImage;J)V

    iget-object p2, p0, Leav;->a:Ledn;

    iput-object v2, p2, Ledn;->b:Leej;

    invoke-virtual {p2, p3}, Ledn;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    invoke-virtual {p1}, Leea;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object p1

    iput-object p1, p2, Ledn;->h:Lcom/google/googlex/gcam/ShotParams;

    invoke-virtual {p2}, Ledn;->a()Ledo;

    move-result-object p1

    iget-object p2, p0, Leav;->c:Lewa;

    iget-object p3, p0, Leav;->b:Lebb;

    invoke-virtual {p2, p3, p1}, Lewa;->c(Lebb;Ledo;)V

    iget-object p1, p0, Leav;->c:Lewa;

    iget-object p1, p1, Lewa;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Property \"timestampNs\" has not been set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
