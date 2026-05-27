.class public final Lgkg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;

.field private final l:Loiw;

.field private final m:Loiw;

.field private final n:Loiw;

.field private final o:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgkg;->a:Loiw;

    iput-object p2, p0, Lgkg;->b:Loiw;

    iput-object p3, p0, Lgkg;->c:Loiw;

    iput-object p4, p0, Lgkg;->d:Loiw;

    iput-object p5, p0, Lgkg;->e:Loiw;

    iput-object p6, p0, Lgkg;->f:Loiw;

    iput-object p7, p0, Lgkg;->g:Loiw;

    iput-object p8, p0, Lgkg;->h:Loiw;

    iput-object p9, p0, Lgkg;->i:Loiw;

    iput-object p10, p0, Lgkg;->j:Loiw;

    iput-object p11, p0, Lgkg;->k:Loiw;

    iput-object p12, p0, Lgkg;->l:Loiw;

    iput-object p13, p0, Lgkg;->m:Loiw;

    iput-object p14, p0, Lgkg;->n:Loiw;

    iput-object p15, p0, Lgkg;->o:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgkg;
    .locals 17

    new-instance v16, Lgkg;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lgkg;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v16
.end method


# virtual methods
.method public final a()Lgkf;
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lgkg;->a:Loiw;

    iget-object v3, v0, Lgkg;->b:Loiw;

    iget-object v4, v0, Lgkg;->c:Loiw;

    iget-object v5, v0, Lgkg;->d:Loiw;

    iget-object v6, v0, Lgkg;->e:Loiw;

    iget-object v7, v0, Lgkg;->f:Loiw;

    iget-object v8, v0, Lgkg;->g:Loiw;

    iget-object v9, v0, Lgkg;->h:Loiw;

    iget-object v10, v0, Lgkg;->i:Loiw;

    iget-object v11, v0, Lgkg;->j:Loiw;

    iget-object v12, v0, Lgkg;->k:Loiw;

    iget-object v13, v0, Lgkg;->l:Loiw;

    iget-object v14, v0, Lgkg;->m:Loiw;

    iget-object v15, v0, Lgkg;->n:Loiw;

    iget-object v1, v0, Lgkg;->o:Loiw;

    new-instance v17, Lgkf;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lgkf;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v17
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgkg;->a()Lgkf;

    move-result-object v0

    return-object v0
.end method
