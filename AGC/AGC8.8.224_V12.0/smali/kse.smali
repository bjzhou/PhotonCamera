.class public final Lkse;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkru;


# direct methods
.method public constructor <init>(Lkru;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkse;->a:Lkru;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkse;->a:Lkru;

    invoke-virtual {v0}, Lkru;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
