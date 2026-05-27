.class public final Lckx;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckx;->a:Loiw;

    iput-object p2, p0, Lckx;->b:Loiw;

    iput-object p3, p0, Lckx;->c:Loiw;

    iput-object p4, p0, Lckx;->d:Loiw;

    iput-object p5, p0, Lckx;->e:Loiw;

    iput-object p6, p0, Lckx;->f:Loiw;

    iput-object p7, p0, Lckx;->g:Loiw;

    iput-object p8, p0, Lckx;->h:Loiw;

    iput-object p9, p0, Lckx;->i:Loiw;

    iput-object p10, p0, Lckx;->j:Loiw;

    iput-object p11, p0, Lckx;->k:Loiw;

    iput-object p12, p0, Lckx;->l:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lckx;
    .locals 14

    new-instance v13, Lckx;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v12}, Lckx;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v13
.end method


# virtual methods
.method public final a()Lckw;
    .locals 14

    iget-object v1, p0, Lckx;->a:Loiw;

    iget-object v2, p0, Lckx;->b:Loiw;

    iget-object v3, p0, Lckx;->c:Loiw;

    iget-object v4, p0, Lckx;->d:Loiw;

    iget-object v5, p0, Lckx;->e:Loiw;

    iget-object v6, p0, Lckx;->f:Loiw;

    iget-object v7, p0, Lckx;->g:Loiw;

    iget-object v8, p0, Lckx;->h:Loiw;

    iget-object v9, p0, Lckx;->i:Loiw;

    iget-object v10, p0, Lckx;->j:Loiw;

    iget-object v0, p0, Lckx;->k:Loiw;

    invoke-static {v0}, Logn;->b(Loiw;)Loiw;

    move-result-object v11

    iget-object v12, p0, Lckx;->l:Loiw;

    new-instance v13, Lckw;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lckw;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v13
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lckx;->a()Lckw;

    move-result-object v0

    return-object v0
.end method
