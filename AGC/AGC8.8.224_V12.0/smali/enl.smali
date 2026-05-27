.class public final Lenl;
.super Ljava/lang/Object;


# instance fields
.field public final a:Leea;

.field final b:Lgmp;

.field final c:I

.field final d:Lkph;

.field public final e:Lnph;

.field final f:Ljava/util/List;

.field final g:Lnph;

.field final h:Lnph;

.field final i:Landroid/os/ConditionVariable;

.field final j:Ljava/util/List;

.field k:I

.field l:I

.field m:J

.field n:Lenn;


# direct methods
.method public constructor <init>(Leea;Lgmp;ILkph;Lnph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lenl;->n:Lenn;

    iput-object p1, p0, Lenl;->a:Leea;

    iput-object p2, p0, Lenl;->b:Lgmp;

    iput p3, p0, Lenl;->c:I

    iput-object p4, p0, Lenl;->d:Lkph;

    iput-object p5, p0, Lenl;->e:Lnph;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lenl;->f:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lenl;->k:I

    iput p1, p0, Lenl;->l:I

    iget-object p1, p2, Lgmp;->t:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->d()J

    move-result-wide p1

    iput-wide p1, p0, Lenl;->m:J

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lenl;->g:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lenl;->h:Lnph;

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lenl;->i:Landroid/os/ConditionVariable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lenl;->j:Ljava/util/List;

    return-void
.end method
