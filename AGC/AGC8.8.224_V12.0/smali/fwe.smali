.class public final Lfwe;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Lfvx;


# direct methods
.method public constructor <init>(Lfvx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwe;->a:Lfvx;

    return-void
.end method


# virtual methods
.method public final a()Lkaf;
    .locals 1

    iget-object v0, p0, Lfwe;->a:Lfvx;

    iget-object v0, v0, Lfvx;->a:Ljava/lang/Object;

    check-cast v0, Lflg;

    iget-object v0, v0, Lflg;->d:Lihb;

    iget-object v0, v0, Lihb;->a:Lkaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfwe;->a()Lkaf;

    move-result-object v0

    return-object v0
.end method
