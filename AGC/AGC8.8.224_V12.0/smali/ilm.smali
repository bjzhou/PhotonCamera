.class public final Lilm;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfax;


# instance fields
.field public final a:Loiw;

.field public final b:Loiw;

.field public final c:Lgzm;

.field public final d:Lgzn;

.field public final e:Landroid/content/pm/PackageInfo;

.field public final f:Ljuh;

.field public final g:Lezx;

.field public final h:Lfbz;


# direct methods
.method public constructor <init>(Loiw;Loiw;Lgzm;Lgzn;Landroid/content/pm/PackageInfo;Ljuh;Lezx;Lfbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lilm;->a:Loiw;

    iput-object p2, p0, Lilm;->b:Loiw;

    iput-object p3, p0, Lilm;->c:Lgzm;

    iput-object p4, p0, Lilm;->d:Lgzn;

    iput-object p5, p0, Lilm;->e:Landroid/content/pm/PackageInfo;

    iput-object p6, p0, Lilm;->f:Ljuh;

    iput-object p7, p0, Lilm;->g:Lezx;

    iput-object p8, p0, Lilm;->h:Lfbz;

    return-void
.end method


# virtual methods
.method public final bO()V
    .locals 3

    sget-object v0, Logu;->a:Logu;

    invoke-virtual {v0}, Logu;->b()Logv;

    move-result-object v0

    invoke-interface {v0}, Logv;->b()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lilm;->c:Lgzm;

    sget-object v2, Lgzd;->ag:Lgzs;

    invoke-interface {v0, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lilm;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lill;

    invoke-interface {v0}, Lill;->c()V

    return-void
.end method
