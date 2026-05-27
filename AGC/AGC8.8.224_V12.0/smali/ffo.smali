.class public final Lffo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lgxy;

.field final b:Lfkm;

.field final c:Lgxn;

.field final d:Lfht;

.field public final e:J

.field public final f:J

.field public final g:Lfst;

.field public final h:Lnph;

.field public final i:Lnou;

.field public final j:Lgxl;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Lnph;

.field public final m:Lnph;

.field public final n:Lkxv;

.field public final o:Z

.field public p:Lmqp;

.field public q:Lmqp;

.field public final r:Lnou;

.field public s:Lmqp;

.field public final t:I

.field public u:I

.field public final v:Llhm;


# direct methods
.method public constructor <init>(Lgxy;Lgxl;Lfkm;Lgxn;Lfht;JLnph;JILfst;Llhm;Lnou;Lkxv;ZLnou;Lnph;Lmqp;[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lffo;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, v0, Lffo;->m:Lnph;

    const/4 v1, 0x1

    iput v1, v0, Lffo;->u:I

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lffo;->q:Lmqp;

    iput-object v1, v0, Lffo;->s:Lmqp;

    move-object v1, p1

    iput-object v1, v0, Lffo;->a:Lgxy;

    move-object v1, p2

    iput-object v1, v0, Lffo;->j:Lgxl;

    move-object v1, p3

    iput-object v1, v0, Lffo;->b:Lfkm;

    move-object v1, p4

    iput-object v1, v0, Lffo;->c:Lgxn;

    move-object v1, p5

    iput-object v1, v0, Lffo;->d:Lfht;

    move-wide v1, p6

    iput-wide v1, v0, Lffo;->e:J

    move-object v1, p8

    iput-object v1, v0, Lffo;->h:Lnph;

    move-wide v1, p9

    iput-wide v1, v0, Lffo;->f:J

    move v1, p11

    iput v1, v0, Lffo;->t:I

    move-object v1, p12

    iput-object v1, v0, Lffo;->g:Lfst;

    move-object/from16 v1, p13

    iput-object v1, v0, Lffo;->v:Llhm;

    move-object/from16 v1, p14

    iput-object v1, v0, Lffo;->i:Lnou;

    move-object/from16 v1, p15

    iput-object v1, v0, Lffo;->n:Lkxv;

    move/from16 v1, p16

    iput-boolean v1, v0, Lffo;->o:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lffo;->r:Lnou;

    move-object/from16 v1, p18

    iput-object v1, v0, Lffo;->l:Lnph;

    move-object/from16 v1, p19

    iput-object v1, v0, Lffo;->p:Lmqp;

    return-void
.end method
