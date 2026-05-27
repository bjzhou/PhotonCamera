.class public final Likg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Likg;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lilz;
    .locals 2

    iget-object v0, p0, Likg;->a:Loiw;

    check-cast v0, Lelp;

    invoke-virtual {v0}, Lelp;->a()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Lilz;

    invoke-direct {v1, v0}, Lilz;-><init>(Landroid/view/Window;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Likg;->a()Lilz;

    move-result-object v0

    return-object v0
.end method
