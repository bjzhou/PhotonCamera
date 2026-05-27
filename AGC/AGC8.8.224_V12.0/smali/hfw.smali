.class public final Lhfw;
.super Lbzv;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lhfw;->a:Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;

    invoke-direct {p0}, Lbzv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lhfw;->a:Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->M(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
