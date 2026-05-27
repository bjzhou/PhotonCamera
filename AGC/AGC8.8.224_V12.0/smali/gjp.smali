.class public final Lgjp;
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

    iput-object p1, p0, Lgjp;->a:Loiw;

    iput-object p2, p0, Lgjp;->b:Loiw;

    iput-object p3, p0, Lgjp;->c:Loiw;

    iput-object p4, p0, Lgjp;->d:Loiw;

    iput-object p5, p0, Lgjp;->e:Loiw;

    iput-object p6, p0, Lgjp;->f:Loiw;

    iput-object p7, p0, Lgjp;->g:Loiw;

    iput-object p8, p0, Lgjp;->h:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgjp;
    .locals 10

    new-instance v9, Lgjp;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lgjp;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v9
.end method


# virtual methods
.method public final a()Lgjo;
    .locals 10

    iget-object v0, p0, Lgjp;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lken;

    iget-object v0, p0, Lgjp;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lglt;

    iget-object v0, p0, Lgjp;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljvs;

    iget-object v0, p0, Lgjp;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lggm;

    iget-object v0, p0, Lgjp;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkbc;

    iget-object v0, p0, Lgjp;->f:Loiw;

    check-cast v0, Lgjz;

    invoke-virtual {v0}, Lgjz;->a()Lgjy;

    move-result-object v7

    iget-object v0, p0, Lgjp;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ldhi;

    iget-object v0, p0, Lgjp;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljuf;

    new-instance v0, Lgjo;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lgjo;-><init>(Lken;Lglt;Ljvs;Lggm;Lkbc;Lgjy;Ldhi;Ljuf;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgjp;->a()Lgjo;

    move-result-object v0

    return-object v0
.end method
