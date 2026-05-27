.class public final Ldqb;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqb;->a:Loiw;

    iput-object p2, p0, Ldqb;->b:Loiw;

    iput-object p3, p0, Ldqb;->c:Loiw;

    iput-object p4, p0, Ldqb;->d:Loiw;

    iput-object p5, p0, Ldqb;->e:Loiw;

    iput-object p6, p0, Ldqb;->f:Loiw;

    iput-object p7, p0, Ldqb;->g:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Ldqb;
    .locals 9

    new-instance v8, Ldqb;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Ldqb;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v8
.end method


# virtual methods
.method public final b()Ljava/lang/Runnable;
    .locals 10

    iget-object v0, p0, Ldqb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Ldqb;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ldqj;

    iget-object v1, p0, Ldqb;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Ldqb;->d:Loiw;

    iget-object v1, p0, Ldqb;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Ldqb;->f:Loiw;

    iget-object v1, p0, Ldqb;->g:Loiw;

    check-cast v1, Lfwo;

    invoke-virtual {v1}, Lfwo;->a()Lfuz;

    move-result-object v3

    if-nez v0, :cond_0

    sget-object v0, Lnpd;->a:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    new-instance v0, Ldqa;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ldqa;-><init>(Lfuz;Ldqj;ZLoiw;ZLoiw;I)V

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldqb;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
