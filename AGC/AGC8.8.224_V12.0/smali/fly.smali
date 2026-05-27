.class public final Lfly;
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

.field private final p:Loiw;

.field private final q:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lfly;->a:Loiw;

    move-object v1, p2

    iput-object v1, v0, Lfly;->b:Loiw;

    move-object v1, p3

    iput-object v1, v0, Lfly;->c:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lfly;->d:Loiw;

    move-object v1, p5

    iput-object v1, v0, Lfly;->e:Loiw;

    move-object v1, p6

    iput-object v1, v0, Lfly;->f:Loiw;

    move-object v1, p7

    iput-object v1, v0, Lfly;->g:Loiw;

    move-object v1, p8

    iput-object v1, v0, Lfly;->h:Loiw;

    move-object v1, p9

    iput-object v1, v0, Lfly;->i:Loiw;

    move-object v1, p10

    iput-object v1, v0, Lfly;->j:Loiw;

    move-object v1, p11

    iput-object v1, v0, Lfly;->k:Loiw;

    move-object v1, p12

    iput-object v1, v0, Lfly;->l:Loiw;

    move-object v1, p13

    iput-object v1, v0, Lfly;->m:Loiw;

    move-object/from16 v1, p14

    iput-object v1, v0, Lfly;->n:Loiw;

    move-object/from16 v1, p15

    iput-object v1, v0, Lfly;->o:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Lfly;->p:Loiw;

    move-object/from16 v1, p17

    iput-object v1, v0, Lfly;->q:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lihg;
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lfly;->a:Loiw;

    iget-object v3, v0, Lfly;->b:Loiw;

    iget-object v4, v0, Lfly;->c:Loiw;

    iget-object v5, v0, Lfly;->d:Loiw;

    iget-object v6, v0, Lfly;->e:Loiw;

    iget-object v7, v0, Lfly;->f:Loiw;

    iget-object v8, v0, Lfly;->g:Loiw;

    iget-object v9, v0, Lfly;->h:Loiw;

    iget-object v10, v0, Lfly;->i:Loiw;

    iget-object v11, v0, Lfly;->j:Loiw;

    iget-object v12, v0, Lfly;->k:Loiw;

    iget-object v13, v0, Lfly;->l:Loiw;

    iget-object v14, v0, Lfly;->m:Loiw;

    iget-object v15, v0, Lfly;->n:Loiw;

    iget-object v1, v0, Lfly;->o:Loiw;

    move-object/from16 v16, v1

    iget-object v1, v0, Lfly;->p:Loiw;

    move-object/from16 v17, v1

    iget-object v1, v0, Lfly;->q:Loiw;

    move-object/from16 v18, v1

    new-instance v19, Lihg;

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v18}, Lihg;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v19
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfly;->a()Lihg;

    move-result-object v0

    return-object v0
.end method
