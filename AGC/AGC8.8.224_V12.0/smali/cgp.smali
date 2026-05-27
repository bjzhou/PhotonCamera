.class public final Lcgp;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lkbc;

.field private final c:Ldna;

.field private final d:Ldhi;

.field private final e:Lklx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/app/CacheCameraInfoBehavior"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcgp;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lklx;Lkbc;Ldna;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcgp;->e:Lklx;

    iput-object p2, p0, Lcgp;->b:Lkbc;

    iput-object p3, p0, Lcgp;->c:Ldna;

    iput-object p4, p0, Lcgp;->d:Ldhi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcgp;->b:Lkbc;

    const-string v1, "#cacheDeviceInfo"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcgp;->c:Ldna;

    iget-object v1, p0, Lcgp;->e:Lklx;

    iget-object v2, p0, Lcgp;->d:Ldhi;

    sget-object v3, Lklv;->b:Lklv;

    invoke-virtual {v0, v1, v2, v3}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcgp;->e:Lklx;

    invoke-virtual {v1, v0}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v0

    invoke-virtual {v0}, Lklw;->y()Ljava/util/List;

    invoke-virtual {v0}, Lklw;->B()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkll;

    iget-object v3, p0, Lcgp;->e:Lklx;

    invoke-virtual {v3, v2}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v2

    invoke-virtual {v2}, Lklw;->y()Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lklw;->z()Ljava/util/Set;

    invoke-virtual {v0}, Lklw;->A()Ljava/util/Set;

    goto :goto_1

    :cond_1
    sget-object v0, Lcgp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "No back-facing camera found."

    const/16 v2, 0x85

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_1
    iget-object v0, p0, Lcgp;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method
