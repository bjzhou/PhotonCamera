.class public final Lfwg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lfvx;


# direct methods
.method public constructor <init>(Lfvx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwg;->a:Lfvx;

    return-void
.end method


# virtual methods
.method public final a()Llpg;
    .locals 1

    iget-object v0, p0, Lfwg;->a:Lfvx;

    iget-object v0, v0, Lfvx;->e:Ljava/lang/Object;

    check-cast v0, Llpg;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfwg;->a()Llpg;

    move-result-object v0

    return-object v0
.end method
