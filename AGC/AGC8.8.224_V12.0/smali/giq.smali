.class public final Lgiq;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgiq;->a:Loiw;

    iput-object p2, p0, Lgiq;->b:Loiw;

    iput-object p3, p0, Lgiq;->c:Loiw;

    iput-object p4, p0, Lgiq;->d:Loiw;

    iput-object p5, p0, Lgiq;->e:Loiw;

    iput-object p6, p0, Lgiq;->f:Loiw;

    iput-object p7, p0, Lgiq;->g:Loiw;

    iput-object p8, p0, Lgiq;->h:Loiw;

    iput-object p9, p0, Lgiq;->i:Loiw;

    iput-object p10, p0, Lgiq;->j:Loiw;

    iput-object p11, p0, Lgiq;->k:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgiq;
    .locals 13

    new-instance v12, Lgiq;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lgiq;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v12
.end method


# virtual methods
.method public final a()Lgip;
    .locals 12

    iget-object v1, p0, Lgiq;->a:Loiw;

    iget-object v2, p0, Lgiq;->b:Loiw;

    iget-object v3, p0, Lgiq;->c:Loiw;

    iget-object v4, p0, Lgiq;->d:Loiw;

    iget-object v5, p0, Lgiq;->e:Loiw;

    iget-object v6, p0, Lgiq;->f:Loiw;

    iget-object v7, p0, Lgiq;->h:Loiw;

    iget-object v8, p0, Lgiq;->i:Loiw;

    iget-object v9, p0, Lgiq;->j:Loiw;

    iget-object v10, p0, Lgiq;->k:Loiw;

    new-instance v11, Lgip;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lgip;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v11
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgiq;->a()Lgip;

    move-result-object v0

    return-object v0
.end method
