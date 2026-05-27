.class public abstract Lnck;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lnck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lncf;

    invoke-direct {v0}, Lncf;-><init>()V

    sput-object v0, Lnck;->c:Lnck;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/util/Set;
.end method

.method public abstract c(Lncb;Ljava/lang/Object;)V
.end method
