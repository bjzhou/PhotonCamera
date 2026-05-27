.class public final Lfou;
.super Lkfg;


# static fields
.field public static final a:Lj$/time/Duration;


# instance fields
.field public final b:Lell;

.field public final c:Ljwb;

.field public final d:Ljuh;

.field public final e:Lmrg;

.field public f:Licf;

.field public g:Z

.field public final h:Lipe;

.field public i:I

.field private final j:Licf;

.field private final k:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lfou;->a:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Lell;Landroid/content/Context;Ljuh;Ljwb;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lkfg;-><init>()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lfou;->k:Ljava/util/Timer;

    sget-object v1, Lmpw;->a:Lmrq;

    invoke-static {v1}, Lmrg;->c(Lmrq;)Lmrg;

    move-result-object v1

    iput-object v1, v0, Lfou;->e:Lmrg;

    const/4 v1, 0x1

    iput v1, v0, Lfou;->i:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lfou;->g:Z

    new-instance v2, Lfos;

    invoke-direct {v2, v0}, Lfos;-><init>(Lfou;)V

    iput-object v2, v0, Lfou;->h:Lipe;

    move-object/from16 v2, p1

    iput-object v2, v0, Lfou;->b:Lell;

    move-object/from16 v2, p3

    iput-object v2, v0, Lfou;->d:Ljuh;

    move-object/from16 v2, p4

    iput-object v2, v0, Lfou;->c:Ljwb;

    const/4 v2, 0x1

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1403bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x6

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    const/4 v11, 0x1

    const/16 v12, 0xbb8

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x6

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v19}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    const/4 v2, 0x0

    const/16 v3, 0x1388

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f14007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lich;

    invoke-direct {v5, v0, v1}, Lich;-><init>(Lfou;I)V

    invoke-static/range {v2 .. v10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Lfou;->j:Licf;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lfou;->i:I

    iget-object v0, p0, Lfou;->j:Licf;

    iput-object v0, p0, Lfou;->f:Licf;

    new-instance v0, Lfot;

    invoke-direct {v0, p0}, Lfot;-><init>(Lfou;)V

    iget-object v1, p0, Lfou;->k:Ljava/util/Timer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfou;->g:Z

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfou;->g:Z

    iget-object v1, p0, Lfou;->c:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lfou;->e:Lmrg;

    invoke-virtual {v0}, Lmrg;->d()V

    iget v0, p0, Lfou;->i:I

    invoke-virtual {p0, v0}, Lfou;->k(I)V

    return-void
.end method

.method public final k(I)V
    .locals 2

    iget v0, p0, Lfou;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    iput v1, p0, Lfou;->i:I

    iget-object p1, p0, Lfou;->f:Licf;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfou;->b:Lell;

    invoke-interface {v0, p1}, Lell;->g(Lelk;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lfou;->f:Licf;

    :cond_0
    return-void
.end method
