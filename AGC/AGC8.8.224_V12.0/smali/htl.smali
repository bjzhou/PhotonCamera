.class public Lhtl;
.super Lhir;


# instance fields
.field public final b:Leoa;

.field public final c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final d:Lgeh;

.field public final e:Litm;

.field public final f:Lhwu;

.field public final g:Loiw;

.field public final h:Liff;

.field public final i:Lebj;

.field public final j:Licb;

.field public final k:Ldbf;

.field public final l:Lgzn;

.field public final m:Ljwb;

.field public final n:Lell;


# direct methods
.method public constructor <init>(Lcvr;Leoa;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Litm;Lhwu;Loiw;Liff;Lebj;Licb;Ldbf;Lgzn;Ljwb;Lell;[B[B[B[B)V
    .locals 9

    move-object v0, p0

    invoke-direct {p0}, Lhir;-><init>()V

    move-object v1, p2

    iput-object v1, v0, Lhtl;->b:Leoa;

    move-object v1, p3

    iput-object v1, v0, Lhtl;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v1, p4

    iput-object v1, v0, Lhtl;->d:Lgeh;

    move-object v1, p5

    iput-object v1, v0, Lhtl;->e:Litm;

    move-object v1, p6

    iput-object v1, v0, Lhtl;->f:Lhwu;

    move-object/from16 v1, p7

    iput-object v1, v0, Lhtl;->g:Loiw;

    move-object/from16 v1, p8

    iput-object v1, v0, Lhtl;->h:Liff;

    move-object/from16 v1, p9

    iput-object v1, v0, Lhtl;->i:Lebj;

    move-object/from16 v1, p10

    iput-object v1, v0, Lhtl;->j:Licb;

    move-object/from16 v1, p11

    iput-object v1, v0, Lhtl;->k:Ldbf;

    move-object/from16 v1, p12

    iput-object v1, v0, Lhtl;->l:Lgzn;

    move-object/from16 v1, p13

    iput-object v1, v0, Lhtl;->m:Ljwb;

    move-object/from16 v1, p14

    iput-object v1, v0, Lhtl;->n:Lell;

    const/4 v1, 0x1

    new-array v2, v1, [Lhiz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lhph;

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object p2, v3

    move-object p3, p1

    move p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-direct/range {p2 .. p8}, Lhph;-><init>(Lcvr;I[B[B[B[B)V

    new-instance v4, Lhth;

    invoke-direct {v4, v3, v1}, Lhth;-><init>(Ljava/lang/Runnable;I)V

    const/4 v1, 0x0

    aput-object v4, v2, v1

    invoke-virtual {p0, v2}, Lhir;->a([Lhiz;)V

    return-void
.end method
