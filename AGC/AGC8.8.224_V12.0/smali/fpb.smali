.class public final Lfpb;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpb;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfpb;
    .locals 1

    new-instance v0, Lfpb;

    invoke-direct {v0, p0}, Lfpb;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 3

    iget-object v0, p0, Lfpb;->a:Loiw;

    check-cast v0, Lknp;

    invoke-virtual {v0}, Lknp;->a()Lknq;

    move-result-object v0

    new-instance v1, Lbkb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbkb;-><init>(Lknq;[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfpb;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method
