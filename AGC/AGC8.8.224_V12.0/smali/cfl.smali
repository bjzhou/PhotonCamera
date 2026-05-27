.class public final Lcfl;
.super Ljava/lang/Object;

# interfaces
.implements Lceq;


# instance fields
.field public final a:Ldhi;

.field public final b:Ljwb;

.field public final c:Ljwb;

.field public final d:Ligo;

.field private final e:Ljvs;


# direct methods
.method public constructor <init>(Ligo;Ldhi;Lgzm;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfl;->d:Ligo;

    iput-object p2, p0, Lcfl;->a:Ldhi;

    sget-object p1, Lgzd;->q:Lgzr;

    invoke-interface {p3, p1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lcfl;->e:Ljvs;

    new-instance p1, Ljvk;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p3}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcfl;->b:Ljwb;

    new-instance p1, Ljvk;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcfl;->c:Ljwb;

    return-void
.end method

.method public static e(Lkll;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "pref_camera_dirty_lens_history_key"

    if-nez p1, :cond_0

    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lkll;->a:Ljava/lang/String;

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "%s-%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljvs;

    const/4 v1, 0x0

    iget-object v2, p0, Lcfl;->c:Ljwb;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcfl;->e:Ljvs;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljwb;
    .locals 1

    iget-object v0, p0, Lcfl;->b:Ljwb;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Lkll;)Lcfk;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcfl;->e(Lkll;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcfk;

    iget-object v1, p0, Lcfl;->d:Ligo;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v1

    iget-object v2, p0, Lcfl;->a:Ldhi;

    invoke-direct {v0, p1, v1, v2}, Lcfk;-><init>(Ljava/lang/String;Ljwb;Ldhi;)V

    return-object v0
.end method
