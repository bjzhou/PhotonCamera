.class public final Lfwf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lfvx;


# direct methods
.method public constructor <init>(Lfvx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwf;->a:Lfvx;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 1

    iget-object v0, p0, Lfwf;->a:Lfvx;

    iget-object v0, v0, Lfvx;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfwf;->a()Lnou;

    move-result-object v0

    return-object v0
.end method
