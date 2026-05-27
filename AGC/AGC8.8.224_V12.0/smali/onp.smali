.class public final Lonp;
.super Lonn;


# instance fields
.field private final c:Lono;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lonn;-><init>()V

    new-instance v0, Lono;

    invoke-direct {v0}, Lono;-><init>()V

    iput-object v0, p0, Lonp;->c:Lono;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lonp;->c:Lono;

    invoke-virtual {v0}, Lono;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
