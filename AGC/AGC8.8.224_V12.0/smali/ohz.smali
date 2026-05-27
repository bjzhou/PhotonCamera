.class public final Lohz;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# static fields
.field public static final a:Lohz;


# instance fields
.field private final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lohz;

    invoke-direct {v0}, Lohz;-><init>()V

    sput-object v0, Lohz;->a:Lohz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Loib;

    invoke-direct {v0}, Loib;-><init>()V

    invoke-static {v0}, Llkj;->E(Ljava/lang/Object;)Lmrl;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object v0

    iput-object v0, p0, Lohz;->b:Lmrl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lohz;->b()Loia;

    move-result-object v0

    return-object v0
.end method

.method public final b()Loia;
    .locals 1

    iget-object v0, p0, Lohz;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loia;

    return-object v0
.end method
