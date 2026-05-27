.class public final Lkup;
.super Ljava/lang/Object;

# interfaces
.implements Lkus;


# instance fields
.field private final a:I

.field private final b:[Ljava/lang/Object;

.field private final c:Ldne;


# direct methods
.method public varargs constructor <init>(Ldne;I[Ljava/lang/Object;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkup;->c:Ldne;

    iput p2, p0, Lkup;->a:I

    iput-object p3, p0, Lkup;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lkup;->c:Ldne;

    iget v1, p0, Lkup;->a:I

    iget-object v2, p0, Lkup;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ldne;->m(I[Ljava/lang/Object;)V

    return-void
.end method
