.class public final Lfxl;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# instance fields
.field public final a:Lkaq;

.field public final b:Lfxw;

.field public final c:Lcea;

.field public final d:Logd;

.field public final e:Ljava/lang/Object;

.field public final f:Ljvs;

.field public final g:Lgsp;

.field public h:I

.field public final i:Ljew;

.field public final j:Lbkb;

.field private final k:Lfxy;

.field private final l:Lgvb;


# direct methods
.method public constructor <init>(Lkap;Lfxw;Lfxy;Lcea;Lbkb;Ljew;Logd;Ljvs;Lgvb;Lgsp;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfxl;->b:Lfxw;

    iput-object p3, p0, Lfxl;->k:Lfxy;

    iput-object p4, p0, Lfxl;->c:Lcea;

    iput-object p5, p0, Lfxl;->j:Lbkb;

    iput-object p6, p0, Lfxl;->i:Ljew;

    const-string p2, "FsnRprcssngIS"

    invoke-interface {p1, p2}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfxl;->a:Lkaq;

    iput-object p7, p0, Lfxl;->d:Logd;

    iput-object p8, p0, Lfxl;->f:Ljvs;

    iput-object p9, p0, Lfxl;->l:Lgvb;

    const/4 p1, 0x1

    iput p1, p0, Lfxl;->h:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxl;->e:Ljava/lang/Object;

    iput-object p10, p0, Lfxl;->g:Lgsp;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 7

    new-instance v6, Lfxk;

    iget-object v2, p0, Lfxl;->k:Lfxy;

    iget-object v3, p1, Lgkr;->c:Ljava/lang/Object;

    iget-object p1, p1, Lgkr;->d:Ljava/lang/Object;

    iget-object v5, p0, Lfxl;->l:Lgvb;

    move-object v4, p1

    check-cast v4, Lfte;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lfxk;-><init>(Lfxl;Lfxy;Lgxl;Lfte;Lgvb;)V

    return-object v6
.end method

.method public final b(Lgkr;)Lfyy;
    .locals 7

    new-instance v6, Lfxk;

    iget-object v2, p0, Lfxl;->k:Lfxy;

    iget-object v3, p1, Lgkr;->c:Ljava/lang/Object;

    iget-object p1, p1, Lgkr;->d:Ljava/lang/Object;

    iget-object v5, p0, Lfxl;->l:Lgvb;

    move-object v4, p1

    check-cast v4, Lfte;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lfxk;-><init>(Lfxl;Lfxy;Lgxl;Lfte;Lgvb;)V

    return-object v6
.end method
