.class public final Ldqw;
.super Ljava/lang/Object;

# interfaces
.implements Ldqy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldqx;)Lnou;
    .locals 4

    sget-object v0, Lnho;->g:Lnho;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnho;

    const/4 v2, 0x1

    iput v2, v1, Lnho;->b:I

    iget v3, v1, Lnho;->a:I

    or-int/2addr v2, v3

    iput v2, v1, Lnho;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnho;

    iget-object v1, p1, Ldqx;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v1, Lhjd;

    iput-object v0, v1, Lhjd;->r:Lnho;

    :cond_1
    iget-object p1, p1, Ldqx;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/ShotMetadata;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n === Deeprestore Summary === \nEnabled: false\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlex/gcam/ShotMetadata;->m(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1
.end method
