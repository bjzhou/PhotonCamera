.class public final Lipz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipz;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljde;
    .locals 9

    iget-object v0, p0, Lipz;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Ljde;

    sget-object v5, Ljdd;->a:Ljdd;

    sget-object v3, Ljqe;->a:Ligo;

    sget-object v4, Ljqd;->a:Ljqd;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lipz;->a()Ljde;

    move-result-object v0

    return-object v0
.end method
