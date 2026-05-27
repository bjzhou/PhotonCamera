.class public final Lcuj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcuj;->a:Loiw;

    iput-object p2, p0, Lcuj;->b:Loiw;

    iput-object p3, p0, Lcuj;->c:Loiw;

    iput-object p4, p0, Lcuj;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcvm;
    .locals 9

    iget-object v0, p0, Lcuj;->a:Loiw;

    check-cast v0, Lcwf;

    invoke-virtual {v0}, Lcwf;->b()Ldja;

    move-result-object v2

    iget-object v0, p0, Lcuj;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljwy;

    iget-object v0, p0, Lcuj;->c:Loiw;

    check-cast v0, Ljxo;

    invoke-virtual {v0}, Ljxo;->a()Ljxn;

    move-result-object v4

    iget-object v0, p0, Lcuj;->d:Loiw;

    check-cast v0, Ljxm;

    invoke-virtual {v0}, Ljxm;->a()Ljxn;

    move-result-object v5

    new-instance v0, Lcvm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcvm;-><init>(Ldja;Ljwy;Ljxn;Ljxn;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcuj;->a()Lcvm;

    move-result-object v0

    return-object v0
.end method
