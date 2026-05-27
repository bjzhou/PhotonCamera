.class public final Lets;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lets;->a:Loiw;

    iput-object p2, p0, Lets;->b:Loiw;

    iput-object p3, p0, Lets;->c:Loiw;

    iput-object p4, p0, Lets;->d:Loiw;

    iput-object p5, p0, Lets;->e:Loiw;

    iput-object p6, p0, Lets;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Letr;
    .locals 8

    iget-object v0, p0, Lets;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfez;

    iget-object v0, p0, Lets;->b:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v3

    iget-object v0, p0, Lets;->c:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v4

    iget-object v0, p0, Lets;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lhsl;

    iget-object v0, p0, Lets;->e:Loiw;

    check-cast v0, Ldwl;

    invoke-virtual {v0}, Ldwl;->a()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v0, p0, Lets;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljvk;

    new-instance v0, Letr;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Letr;-><init>(Lfez;Logd;Logd;Lhsl;Landroid/content/res/Resources;Ljvk;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lets;->a()Letr;

    move-result-object v0

    return-object v0
.end method
