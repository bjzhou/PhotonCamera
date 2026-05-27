.class public final synthetic Lnul;
.super Ljava/lang/Object;

# interfaces
.implements Lktx;


# instance fields
.field public final synthetic a:Lcom/google/lens/sdk/LensApi;

.field public final synthetic b:Lnup;

.field public final synthetic c:J

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/lens/sdk/LensApi;Lnup;JLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnul;->a:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Lnul;->b:Lnup;

    iput-wide p3, p0, Lnul;->c:J

    iput-object p5, p0, Lnul;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    iget-object v0, p0, Lnul;->a:Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lnul;->b:Lnup;

    iget-wide v2, p0, Lnul;->c:J

    iget-object v4, p0, Lnul;->d:Landroid/app/Activity;

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    iget-object p1, v1, Lnup;->c:Ljava/lang/Long;

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lnup;->d()Loem;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Loem;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Loem;->b()Lnup;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/lens/sdk/LensApi;->d(Lnup;)V

    return-void

    :cond_1
    invoke-static {v4}, Lcom/google/lens/sdk/LensApi;->h(Landroid/app/Activity;)V

    return-void
.end method
