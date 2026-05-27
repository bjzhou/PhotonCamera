.class public final Ldzi;
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

    iput-object p1, p0, Ldzi;->a:Loiw;

    iput-object p2, p0, Ldzi;->b:Loiw;

    iput-object p3, p0, Ldzi;->c:Loiw;

    iput-object p4, p0, Ldzi;->d:Loiw;

    iput-object p5, p0, Ldzi;->e:Loiw;

    iput-object p6, p0, Ldzi;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldzh;
    .locals 9

    iget-object v0, p0, Ldzi;->a:Loiw;

    check-cast v0, Lelv;

    invoke-virtual {v0}, Lelv;->a()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Ldzi;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lhlc;

    iget-object v0, p0, Ldzi;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lhlc;

    iget-object v0, p0, Ldzi;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkbc;

    iget-object v0, p0, Ldzi;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Llpg;

    iget-object v0, p0, Ldzi;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldhi;

    new-instance v0, Ldzh;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ldzh;-><init>(Landroid/content/ContentResolver;Lhlc;Lhlc;Lkbc;Llpg;Ldhi;[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldzi;->a()Ldzh;

    move-result-object v0

    return-object v0
.end method
