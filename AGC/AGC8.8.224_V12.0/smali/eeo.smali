.class public final Leeo;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lfbk;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lgvb;

.field public final e:Lefq;

.field public final f:Ldhi;

.field public final g:Lfuz;

.field public final h:Ljew;

.field public final i:Lbkb;

.field private final j:Lfwx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/burst/BurstUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leeo;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljew;Lfbk;Lfuz;Lbkb;Lgvb;Lefq;Ldhi;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeo;->h:Ljew;

    iput-object p2, p0, Leeo;->b:Lfbk;

    iput-object p3, p0, Leeo;->g:Lfuz;

    iput-object p4, p0, Leeo;->i:Lbkb;

    iput-object p6, p0, Leeo;->e:Lefq;

    iput-object p7, p0, Leeo;->f:Ldhi;

    new-instance p1, Lfwx;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lfwx;-><init>(I)V

    iput-object p1, p0, Leeo;->j:Lfwx;

    new-instance p1, Ljul;

    const-string p2, "BurstEnc"

    invoke-static {p2}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-direct {p1, p2}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Leeo;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Leeo;->d:Lgvb;

    return-void
.end method


# virtual methods
.method public final a(JLigo;Lgpa;IIZLeen;Lgxl;Ljava/util/UUID;Lcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lnou;
    .locals 20

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v9

    move-object/from16 v8, p0

    iget-object v0, v8, Leeo;->j:Lfwx;

    new-instance v1, Leek;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v1

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p11

    move/from16 v16, p5

    move-object/from16 v17, p9

    invoke-direct/range {v10 .. v19}, Leek;-><init>(Leeo;Ligo;IZLcom/google/googlex/gcam/ShotMetadata;ILgxl;[B[B)V

    invoke-virtual {v0, v1}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object v10

    new-instance v11, Leel;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Leel;-><init>(Leeo;ILeen;Lgpa;Lgxl;Ljava/util/UUID;Lmqp;Lnph;)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v10, v11, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method
