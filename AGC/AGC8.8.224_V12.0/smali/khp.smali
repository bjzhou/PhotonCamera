.class public final synthetic Lkhp;
.super Ljava/lang/Object;

# interfaces
.implements Ljzu;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ligo;


# direct methods
.method public synthetic constructor <init>(Ligo;J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkhp;->b:Ligo;

    iput-wide p2, p0, Lkhp;->a:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkhp;->b:Ligo;

    iget-wide v1, p0, Lkhp;->a:J

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->aa(J)Lknb;

    move-result-object v0

    return-object v0
.end method
