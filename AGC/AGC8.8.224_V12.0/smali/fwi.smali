.class public final Lfwi;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwi;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Lfwi;
    .locals 1

    new-instance v0, Lfwi;

    invoke-direct {v0, p0}, Lfwi;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfwh;
    .locals 2

    iget-object v0, p0, Lfwi;->a:Loiw;

    check-cast v0, Lgca;

    invoke-virtual {v0}, Lgca;->a()Ljvs;

    move-result-object v0

    new-instance v1, Lfwh;

    invoke-direct {v1, v0}, Lfwh;-><init>(Ljvs;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfwi;->a()Lfwh;

    move-result-object v0

    return-object v0
.end method
