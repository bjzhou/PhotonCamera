.class public final Lgnn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnn;->a:Loiw;

    iput-object p2, p0, Lgnn;->b:Loiw;

    iput-object p3, p0, Lgnn;->c:Loiw;

    iput-object p4, p0, Lgnn;->d:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Lgnn;
    .locals 1

    new-instance v0, Lgnn;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnn;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ldja;
    .locals 5

    iget-object v0, p0, Lgnn;->a:Loiw;

    iget-object v1, p0, Lgnn;->b:Loiw;

    iget-object v2, p0, Lgnn;->d:Loiw;

    new-instance v3, Ldja;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Ldja;-><init>(Loiw;Loiw;Loiw;[B)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgnn;->b()Ldja;

    move-result-object v0

    return-object v0
.end method
