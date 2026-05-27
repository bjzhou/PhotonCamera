.class public final Leei;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leei;->a:Loiw;

    iput-object p2, p0, Leei;->b:Loiw;

    iput-object p3, p0, Leei;->c:Loiw;

    iput-object p4, p0, Leei;->d:Loiw;

    iput-object p5, p0, Leei;->e:Loiw;

    iput-object p6, p0, Leei;->f:Loiw;

    iput-object p7, p0, Leei;->g:Loiw;

    iput-object p8, p0, Leei;->h:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Leei;
    .locals 10

    new-instance v9, Leei;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Leei;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v9
.end method


# virtual methods
.method public final a()Leeh;
    .locals 10

    iget-object v0, p0, Leei;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lebi;

    iget-object v0, p0, Leei;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lecy;

    iget-object v0, p0, Leei;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldhi;

    iget-object v0, p0, Leei;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lebe;

    iget-object v0, p0, Leei;->e:Loiw;

    check-cast v0, Leck;

    invoke-virtual {v0}, Leck;->b()Lnqx;

    move-result-object v6

    iget-object v0, p0, Leei;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lebl;

    iget-object v0, p0, Leei;->g:Loiw;

    check-cast v0, Leap;

    invoke-virtual {v0}, Leap;->a()Leao;

    move-result-object v8

    iget-object v0, p0, Leei;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljvs;

    new-instance v0, Leeh;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Leeh;-><init>(Lebi;Lecy;Ldhi;Lebe;Lnqx;Lebl;Leao;Ljvs;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leei;->a()Leeh;

    move-result-object v0

    return-object v0
.end method
