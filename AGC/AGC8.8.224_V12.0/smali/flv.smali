.class public final Lflv;
.super Ljava/lang/Object;

# interfaces
.implements Lfmd;


# instance fields
.field public final A:Ldqx;

.field public final a:Lfbk;

.field public final b:Lgwf;

.field public final c:Lgft;

.field public final d:Lgvw;

.field public final e:Ljwb;

.field public final f:Ljwb;

.field public final g:Ljvs;

.field public final h:Ljvs;

.field public final i:Ljwb;

.field public final j:Ljwb;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljwb;

.field public final n:Ljwb;

.field public final o:Lgzm;

.field public final p:Ldhi;

.field public final q:Ljvs;

.field public final r:Lgwu;

.field public s:Lhke;

.field public final t:Lgla;

.field public final u:Lmqp;

.field public final v:Landroid/view/accessibility/AccessibilityManager;

.field public final w:Loiw;

.field public x:Lgxl;

.field public final y:Lkpo;

.field public final z:Ljew;


# direct methods
.method public constructor <init>(Lfbk;Ljew;Lgwf;Lgft;Lgvw;Landroid/content/Context;Ljwb;Ljwb;Ljvs;Ljwb;Ljwb;Ljwb;Ljwb;Ljvs;Lgzm;Ljwb;Ldhi;Ldqx;Lgwu;Lkpo;Lgla;Lmqp;Landroid/view/accessibility/AccessibilityManager;Loiw;[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lflv;->a:Lfbk;

    move-object v1, p2

    iput-object v1, v0, Lflv;->z:Ljew;

    move-object v1, p3

    iput-object v1, v0, Lflv;->b:Lgwf;

    move-object v1, p4

    iput-object v1, v0, Lflv;->c:Lgft;

    move-object v1, p5

    iput-object v1, v0, Lflv;->d:Lgvw;

    move-object v1, p7

    iput-object v1, v0, Lflv;->e:Ljwb;

    move-object/from16 v1, p14

    iput-object v1, v0, Lflv;->g:Ljvs;

    move-object v1, p8

    iput-object v1, v0, Lflv;->f:Ljwb;

    move-object v1, p9

    iput-object v1, v0, Lflv;->h:Ljvs;

    move-object v1, p10

    iput-object v1, v0, Lflv;->i:Ljwb;

    move-object v1, p11

    iput-object v1, v0, Lflv;->j:Ljwb;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1403f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lflv;->k:Ljava/lang/String;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1403f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lflv;->l:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lflv;->m:Ljwb;

    move-object/from16 v1, p13

    iput-object v1, v0, Lflv;->n:Ljwb;

    move-object/from16 v1, p15

    iput-object v1, v0, Lflv;->o:Lgzm;

    move-object/from16 v1, p16

    iput-object v1, v0, Lflv;->q:Ljvs;

    move-object/from16 v1, p17

    iput-object v1, v0, Lflv;->p:Ldhi;

    move-object/from16 v1, p18

    iput-object v1, v0, Lflv;->A:Ldqx;

    move-object/from16 v1, p19

    iput-object v1, v0, Lflv;->r:Lgwu;

    move-object/from16 v1, p20

    iput-object v1, v0, Lflv;->y:Lkpo;

    move-object/from16 v1, p21

    iput-object v1, v0, Lflv;->t:Lgla;

    move-object/from16 v1, p22

    iput-object v1, v0, Lflv;->u:Lmqp;

    move-object/from16 v1, p23

    iput-object v1, v0, Lflv;->v:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p24

    iput-object v1, v0, Lflv;->w:Loiw;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lflv;->x:Lgxl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgxl;->V(Ljava/lang/Integer;)V

    return-void
.end method

.method public final b(Lflk;Lftf;ZLhke;)Lnou;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lftg;Lflg;Lftf;Lfuz;ZZLhke;)Lnou;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Method is Deprecated"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lmbe;)V
    .locals 1

    iget-object v0, p0, Lflv;->x:Lgxl;

    invoke-static {v0, p1}, Lflr;->a(Lgxl;Lmbe;)V

    return-void
.end method
