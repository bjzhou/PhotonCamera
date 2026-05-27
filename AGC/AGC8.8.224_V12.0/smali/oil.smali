.class public final Loil;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Loil;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loil;

    invoke-direct {v0}, Loil;-><init>()V

    sput-object v0, Loil;->a:Loil;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Loin;

    invoke-direct {v0}, Loin;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Loil;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Loil;->b()Loim;

    move-result-object v0

    return-object v0
.end method

.method public final b()Loim;
    .locals 1

    iget-object v0, p0, Loil;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loim;

    return-object v0
.end method
