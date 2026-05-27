.class public final Lfud;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfud;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfud;
    .locals 1

    new-instance v0, Lfud;

    invoke-direct {v0, p0}, Lfud;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 3

    iget-object v0, p0, Lfud;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loxq;

    new-instance v1, Lbkb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lbkb;-><init>(Loxq;[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfud;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method
