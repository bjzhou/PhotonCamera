.class public final Lipy;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipy;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ljde;
    .locals 1

    iget-object v0, p0, Lipy;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljqe;->a(Landroid/content/Context;)Ljde;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lipy;->a()Ljde;

    move-result-object v0

    return-object v0
.end method
