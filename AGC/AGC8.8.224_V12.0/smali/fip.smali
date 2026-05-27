.class public final Lfip;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfip;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfip;
    .locals 1

    new-instance v0, Lfip;

    invoke-direct {v0, p0}, Lfip;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 3

    iget-object v0, p0, Lfip;->a:Loiw;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    new-instance v1, Lbkb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lbkb;-><init>(Ldne;[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfip;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method
