.class public final Lcsx;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lctd;

.field public final b:Ljxa;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:J

.field public final l:Ljava/util/Map;

.field public final m:Lgya;

.field public final n:Ljava/util/List;

.field public final o:I

.field public final p:Z

.field public final q:F

.field public final r:J

.field public final s:J

.field public final t:Lgxz;

.field public final u:Z

.field public final v:Z

.field public final w:Lmqp;

.field public final x:Lmqp;

.field public final y:Lmqp;

.field public final z:Lcvr;


# direct methods
.method public constructor <init>(Lctd;Ljxa;Lcvr;ZJJIIIIILmqp;Ljava/util/Map;Lgya;Ljava/util/List;IZFJJLgxz;ZZLmqp;Lmqp;Lmqp;[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcsx;->a:Lctd;

    move-object v1, p2

    iput-object v1, v0, Lcsx;->b:Ljxa;

    move-object v1, p3

    iput-object v1, v0, Lcsx;->z:Lcvr;

    move v1, p4

    iput-boolean v1, v0, Lcsx;->c:Z

    move-wide v1, p5

    iput-wide v1, v0, Lcsx;->e:J

    move-wide v1, p7

    iput-wide v1, v0, Lcsx;->d:J

    move v1, p9

    iput v1, v0, Lcsx;->f:I

    move v1, p10

    iput v1, v0, Lcsx;->g:I

    move v1, p11

    iput v1, v0, Lcsx;->h:I

    move v1, p12

    iput v1, v0, Lcsx;->i:I

    move/from16 v1, p13

    iput v1, v0, Lcsx;->j:I

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p14

    invoke-virtual {v2, v1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcsx;->k:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcsx;->l:Ljava/util/Map;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcsx;->m:Lgya;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcsx;->n:Ljava/util/List;

    move/from16 v1, p18

    iput v1, v0, Lcsx;->o:I

    move/from16 v1, p19

    iput-boolean v1, v0, Lcsx;->p:Z

    move/from16 v1, p20

    iput v1, v0, Lcsx;->q:F

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcsx;->r:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcsx;->s:J

    move-object/from16 v1, p25

    iput-object v1, v0, Lcsx;->t:Lgxz;

    move/from16 v1, p26

    iput-boolean v1, v0, Lcsx;->u:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Lcsx;->v:Z

    move-object/from16 v1, p28

    iput-object v1, v0, Lcsx;->w:Lmqp;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcsx;->x:Lmqp;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcsx;->y:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcsx;->a:Lctd;

    invoke-interface {v0}, Lctd;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Ljwu;
    .locals 1

    iget-object v0, p0, Lcsx;->b:Ljxa;

    iget-object v0, v0, Ljxa;->b:Ljwu;

    return-object v0
.end method
