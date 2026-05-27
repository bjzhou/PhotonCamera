.class public final Looi;
.super Ljava/lang/Object;

# interfaces
.implements Looc;


# instance fields
.field public final a:Looc;

.field public final b:Lomk;


# direct methods
.method public constructor <init>(Looc;Lomk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Looi;->a:Looc;

    iput-object p2, p0, Looi;->b:Lomk;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Looh;

    invoke-direct {v0, p0}, Looh;-><init>(Looi;)V

    return-object v0
.end method
