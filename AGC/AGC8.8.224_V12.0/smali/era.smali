.class public final Lera;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lva;


# direct methods
.method public constructor <init>(Lva;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lera;->a:Lva;

    return-void
.end method


# virtual methods
.method public final a()Lbkc;
    .locals 2

    iget-object v0, p0, Lera;->a:Lva;

    new-instance v1, Lbkc;

    iget-object v0, v0, Lva;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lbkc;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lera;->a()Lbkc;

    move-result-object v0

    return-object v0
.end method
